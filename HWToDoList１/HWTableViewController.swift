//
//  HWTableViewController.swift
//  HWToDoList
//
//  Created by Chang Sophia on 4/24/19.
//  Copyright © 2019 Chang Sophia. All rights reserved.
//

import UIKit

class HWTableViewController: UITableViewController{
    
    var homeworks = [ "#01 給我一首歌的時間做App", "#02 擇偶條件App", "#03 問答題", "#04 用view拼湊漂亮的圖案", "#05 Auto Layout練習", "#06 猜數字和1A2B App", "#07 Light App", "#08 甜蜜的Apple Pie(恐怖的Hangman)", "#09 鐵板神算App(回答問題的笨AI機器人)", "#10 猜拳遊戲", "#11 瘋狂購物App-UISepper和數字變字串練習", "#12 計算機App", "#13 彼得潘的影子-調色大師", "#14 搭配Sketch和Zeplin，製作iOS App畫面", "#15 化學元素週期表-用prepare傳遞資料", "#16 心理測驗或問卷App", "#17 模仿FB超準的面相算命App", "#18 世大運主題畫面截圖分享", "#19 串接第三方API，解析JSON資料，轉換成自訂型別顯示", "#20 訂飲料App，上傳資料到後台", "#21 存取檔案實作單字App", "#22 二十一點亞洲慈善撲克王大賽", "#23 利用Date Picker計算生命靈數", "#24 Storyboard電子書App", "#25 選擇題App", "#26 研究Apple官方的MusicKit Sample Code", "#27 利用Codable儲存過年紅包", "#28 利用Notification Service Extension解密摩斯密碼(morse code)推播和下載圖片", "#29 開發Swift Playground程式，免費獲得WWDC門票", "#30 熟練iOS SDK內建的data source & delegate", "#31 製作iPhone內建的iOS App畫面", "#32 研究GitHub上Udacity學生們的iOS App程式", "#33 顯示時間的正妹帥哥時計", "#34 數學小神童", "#35 換算App，比方小費，BMI，匯率", "#36 研讀一本iOS App開發入門原文書", "#37 利用scroll view實現人體分割魔術", "#38 愛情的模樣-點選Segmented Control和Button更換圖片", "#39 以static cells製作數量內容固定的表格", "#40 世界末日倒數計時-Date Picker和Date的練習", "#41 文字的縮放和字數-UISlider & UITextField練習", "#42 利用iOS SDK各式型別生成東西，設定它的屬性和呼叫方法", "#43 從程式製作國旗圖案", "#44 利用becomeFirstResponder練習鍵盤的顯示", "#45 愛我，不愛我的摘花瓣App", "#46 利用marvel的POP App做一個prototype app", "#47 反轉古人撩妹金句", "#48 骰子轉轉轉和骰子吹牛", "#49 Storyboard有聲書App", "#50 to-do list的完成打勾", "#51 實作Table View的基本功能", "#52 運用UIBezierPath繪製可愛圖案，比方雪人，米奇＆可愛動物", "#53 照片牆(Grid Photo Wall)", "#54 愛你最好的距離slider練習", "#55 開不了口的告白＆我們一起學貓叫" , "#56 消失的獨角獸－WWDC18 App", "#57 桌遊棋類App, 比方蛇梯棋（Snakes&Ladders)", "#58 Swift的九九乘法表App", "#59 製作Stanford iOS課程裡提到的翻牌記憶遊戲，Concentration App", "#60 畫星星蘋果", "#61 實作iOS時鐘App的碼錶和倒數計時器", "#62 透過present顯示iOS SDK內建的１０種controller", "#63 情歌對唱的聊天室畫面－cell的auto layout", "#64 定義function, 印出讓自己一秒落淚的情歌歌詞", "#65 模仿製作iOS內建的Clock App", "#66 製作拍立得App學習if else", "#67 研究Unwrap App，一邊學swift，一邊研究App怎麼做出來的", "#68 利用unwind segue將表格選擇的結果回傳－App功能實作解密１", "#69 10YearChallenge，時間都去哪了", "#70 利用NSTextAttachement，製作包含圖片的字串", "#71 大學的Swift iOS App課程作業", "#72 化身Youtuber，錄製iOS　App開發教學影片", "#73 包含左右滑動區塊的table view", "#74 利用CIFilter實現美麗的圖片濾鏡", "#75 單位轉換的Measurement，Unit&MeasurementFormatter", "#76 scroll view delegate-分頁和圖片的縮放", "#77 搭配UIImgagePickerController選照片", "#78 利用delegate在controller間溝通＆傳資料的步驟說明"]

    var isDone: [Bool]?
    override func viewDidLoad() {
        super.viewDidLoad()
        isDone = Array(repeating: false, count: homeworks.count)
    }
    


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
         return homeworks.count
        
       
    }

   
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
       
        let row = indexPath.row
        cell.textLabel?.text = homeworks[row]
        if isDone![row] {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        return cell
    }


        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            isDone![indexPath.row] = !isDone![indexPath.row]
            tableView.reloadData()
        }
    
   
     
    
    }
