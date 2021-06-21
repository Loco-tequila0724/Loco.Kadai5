import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var calculateNumberLabel: UILabel!

// アラート機能
    private func presentWarningAlert(message: String) {
        let alertController: UIAlertController = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        present(alertController, animated: true)
    }

    @IBAction private func calculateButton(_ sender: Any) {
        guard let firstNumber = Double(firstTextField.text!) else {
            presentWarningAlert(message: "割られる数を入力してください")
            return
        }
        guard let secondNumber = Double(secondTextField.text!) else {
            presentWarningAlert(message: "割る数を入力してください")
            return
        }
        guard secondNumber != 0 else {
            presentWarningAlert(message: "割る時には、０を入力しないで下さい")
            return
        }
        calculateNumberLabel.text = String(firstNumber / secondNumber)
    }
}
