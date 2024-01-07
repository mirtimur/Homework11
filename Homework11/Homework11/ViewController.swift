import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textReciever: UILabel!
    
    @IBAction func goToSecondScreenButtonPressed(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "SecondViewController", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else { return }
        
        vc.modalPresentationStyle = .fullScreen
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
}

extension ViewController: StringDelagate {
    func receiveString(text: String) {
        textReciever.text = text
    }
}
