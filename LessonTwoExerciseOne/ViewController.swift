//
//  ViewController.swift
//  LessonTwoExerciseOne
//
//  Created by admin on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redNumber: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var redTextField: UITextField!
    
    @IBOutlet var greenNumber: UILabel!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var greenTextField: UITextField!
    
    @IBOutlet var blueNumber: UILabel!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var blueTextField: UITextField!
    
    @IBOutlet var doneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        // Setup sliders
        redSlider.value = 0
        redSlider.maximumValue = 1
        redSlider.minimumValue = 0
        
        greenSlider.value = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        
        blueSlider.value = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        
        // Setup labels
        redNumber.text = String(redSlider.value)
        greenNumber.text = String(greenSlider.value)
        blueNumber.text = String(blueSlider.value)
        
        // Setup button
        doneButton.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func redSliderValueChanging() {
        redSlider.value = round(redSlider.value * 100) / 100
        redNumber.text = String(redSlider.value)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
        
    }
    
    @IBAction func greenSliderValueChanging() {
        greenSlider.value = round(greenSlider.value * 100) / 100
        greenNumber.text = String(greenSlider.value)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func blueSliderValueChanging() {
        blueSlider.value = round(blueSlider.value * 100) / 100
        blueNumber.text = String(blueSlider.value)
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func redTextFieldEditing() {
        doneButton.isHidden = false
        guard let redColorString = redTextField.text else { return }
        guard let redColorNumber = Float(redColorString) else { return }
        redNumber.text = String(redColorNumber)
        redSlider.value = redColorNumber
        colorView.backgroundColor = UIColor(red: CGFloat(redColorNumber), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func greenTextFieldEditing() {
        guard let greenColorString = greenTextField.text else { return }
        guard let greenColorNumber = Float(greenColorString) else { return }
        greenNumber.text = String(greenColorNumber)
        greenSlider.value = greenColorNumber
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenColorNumber), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
    @IBAction func blueTextFieldEditing() {
        guard let blueColorString = blueTextField.text else { return }
        guard let blueColorNumber = Float(blueColorString) else { return }
        blueNumber.text = String(blueColorNumber)
        blueSlider.value = blueColorNumber
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueColorNumber), alpha: 1)
    }
    
    @IBAction func doneButtonPressed() {
        
    }
    
}

