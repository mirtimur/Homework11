import UIKit

protocol StringDelagate: AnyObject {
    func receiveString(text: String)
}

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    
    weak var delegate: StringDelagate?
    
    func sendString() {
        let message = "\(firstTextField.text ?? "") \(secondTextField.text ?? "") \(thirdTextField.text ?? "")"
        delegate?.receiveString(text: message)
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
        sendString()
    }
}
