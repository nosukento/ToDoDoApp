//
//  ViewController.swift
//  ToDoDo
//
//  Created by Ryunosuke Todate on 2021/03/10.
//

import UIKit
//classの継承を追加
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //UITableView, numberOfRowsInSectionの追加（表示するcell数を決める）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定
        return Todonakami.count
    }
    //UITableView, cellForRowAtの追加（表示するcellの中身を決める）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //変数を作る
        let Todocell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        //変数の中身を作る
        Todocell.textLabel!.text = Todonakami[indexPath.row]
        //戻り値の設定（表示する中身）
        return Todocell
    }
    //セルの編集の許可
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    //スワイプしたセルを削除
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            Todonakami.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    
    //最初からあるコード
    override func viewDidLoad() {
        super.viewDidLoad()
        //add画面で入力した内容を取得する
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            Todonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
        
    }


}

