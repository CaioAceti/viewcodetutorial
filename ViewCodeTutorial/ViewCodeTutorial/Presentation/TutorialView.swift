import UIKit

class TutorialView: UIView {
    
    init() {
        super.init(frame: .zero)
        buildView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var cardView: UIView = {
        let cardView = UIView()
        cardView.layer.cornerRadius = 15
        cardView.backgroundColor = .white
        
        return cardView
    }()
    
    private lazy var cardTitle: UILabel = {
        let label = UILabel()
        label.text = "Exemplo de card"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        return label
    }()
    
    private lazy var cardMessage: UILabel = {
        let label = UILabel()
        label.text = "Exemplo de card"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        return label
    }()
    
    private lazy var exampleImage: UIImageView = {
        let image = UIImage(named: "example-image")
        
        return UIImageView(image: image)
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 160/255, green: 111/255, blue: 221/255, alpha: 1)
        button.setTitle("Esconder imagem", for: .normal)
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .black)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc private func didTapButton() {
        exampleImage.isHidden = !exampleImage.isHidden
    }
}

extension TutorialView: ViewCodeProtocol {
    func setupHierarchy() {
        addSubview(cardView)
        addSubview(cardTitle)
        addSubview(cardMessage)
        addSubview(exampleImage)
        addSubview(button)
    }
    
    func setupConstraints() {
        cardView.constraint { view in
            [view.centerYAnchor.constraint(equalTo: centerYAnchor),
             view.centerXAnchor.constraint(equalTo: centerXAnchor),
             view.heightAnchor.constraint(equalToConstant: 550),
             view.widthAnchor.constraint(equalToConstant: 350)]
        }
        
        cardTitle.constraint { view in
            [view.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 20),
             view.centerXAnchor.constraint(equalTo: centerXAnchor)]
        }
        
        exampleImage.constraint { view in
            [view.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
             view.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
             view.heightAnchor.constraint(equalToConstant: 200),
             view.widthAnchor.constraint(equalToConstant: 200)]
        }
        
        cardMessage.constraint { view in
            [view.topAnchor.constraint(equalTo: exampleImage.bottomAnchor, constant: 30),
             view.centerXAnchor.constraint(equalTo: centerXAnchor)]
        }
        
        button.constraint { view in
            [view.bottomAnchor.constraint(equalTo: safeArea().bottomAnchor, constant: -16),
             view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
             view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
             view.heightAnchor.constraint(equalToConstant: 40)]
        }
    }
    
    func additionalSetup() {
        self.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 246/255, alpha: 1)
    }
}
