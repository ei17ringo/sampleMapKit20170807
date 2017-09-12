//
//  ViewController.swift
//  sampleMapKit
//
//  Created by Eriko Ichinohe on 2017/09/12.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

//フレームワーク読み込み
import UIKit
import MapKit   //地図用の部品を使う時必要

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // アヤラを中心とした地図を表示
        
        // 1.中心となる場所の座標オブジェクトを作成
        let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        
        // 2.縮尺を設定
        let span = MKCoordinateSpanMake(0.1, 0.1)
        
        // 3.範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(coodinate, span)
        
        // 4.MapViewに範囲オブジェクトを設定
        myMapView.setRegion(region, animated: true)
        
        //アヤラにピンを立てる
        
        // 1.pinオブジェクトを生成
        let myPin = MKPointAnnotation()
        
        // 2.pinの座標を設定
        // これも正解
        // myPin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        myPin.coordinate = coodinate
        
        
        // 3.タイトル、サブタイトルを設定
        myPin.title = "アヤラ"
        myPin.subtitle = "おすすめ"
        
        // 4.mapViewにピンを追加
        myMapView.addAnnotation(myPin)
        
        //TODO:pinをもう一つ立ててみましょう
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

