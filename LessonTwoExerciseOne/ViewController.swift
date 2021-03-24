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
        
        // Setup text fields
        redTextField.text = "0"
        greenTextField.text = "0"
        blueTextField.text = "0"
        
        // Setup labels
        redNumber.text = String(redSlider.value)
        greenNumber.text = String(greenSlider.value)
        blueNumber.text = String(blueSlider.value)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func redSliderValueChanging() {
        redNumber.text = String(redSlider.value)
    }
    
    @IBAction func greenSliderValueChanging() {
        greenNumber.text = String(greenSlider.value)
    }
    
    @IBAction func blueSliderValueChanging() {
        blueNumber.text = String(blueSlider.value)
    }
    
    @IBAction func redTextFieldEditing() {
    }
    
    @IBAction func greenTextFieldEditing() {
    }
    
    @IBAction func blueTextFieldEditing() {
    }
    
}

