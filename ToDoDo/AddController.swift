//
//  AddController.swift
//  ToDoDo
//
//  Created by Ryunosuke Todate on 2021/03/11.
//

import UIKit

//変数の設置
var Todonakami = [String]()

class AddController: UIViewController {
    //テキストフィールドの設定
    @IBOutlet weak var TodotextField: UITextField!
    //addボタンの設定
    @IBAction func TodoAddButton(_ sender: Any) {
        //変数に入力内容を入れる
        Todonakami.append(TodotextField.text!)
        //addボタンを押したらフィールドを空にする
        TodotextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set(Todonakami, forKey: "TodoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
