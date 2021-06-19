import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var firstTextField: UITextField!
    @IBOutlet weak private var secondTextField: UITextField!
    @IBOutlet weak private var calculateNumberLabel: UILabel!

// 計算式　割り算
    private func calculateDivision() {
        let firstNumber = Double(firstTextField.text!) ?? 0
        let secondNumber = Double(secondTextField.text!) ?? 0

        calculateNumberLabel.text = String(firstNumber / secondNumber)
    }
// アラート機能
    private func callWarningAlert(message: String) {
        let alertController: UIAlertController = UIAlertController(title: "課題５", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))

        present(alertController, animated: true)
    }

    @IBAction private func calculateButton(_ sender: Any) {
        if secondTextField.text!.isEmpty {
            callWarningAlert(message: "割る数を入力してください🐥")
        } else if secondTextField.text! == "0" {
            callWarningAlert(message: "割る時には、０を入力しないで下さい🐥")
        } else {
            calculateDivision()
        }
    }
}
