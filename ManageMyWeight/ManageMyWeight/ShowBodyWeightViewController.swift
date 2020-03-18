//
//  ShowBodyWeightViewController.swift
//  ManageMyWeight
//
//  Created by hitoshi on 2020/03/14.
//  Copyright © 2020 Toshi. All rights reserved.
//

import UIKit

class ShowBodyWeightViewController: UIViewController, BEMSimpleLineGraphDelegate, BEMSimpleLineGraphDataSource {
    func numberOfPoints(inLineGraph graph: BEMSimpleLineGraphView) -> Int {
        return 0;
    }
    
    
    var bodyWeight: String = "";
    
    
    // サンプルラベル
    var SampleLabel: Array<String> = ["ラベルA", "ラベルB", "ラベルD", "ラベルE", "ラベルF"]
    // サンプルデータ
    var SampleData:  Array<Float> = [10.5, 20.8, 5.3, 12.1, 25.9]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // グラフのViewを作成（今回はメインビューと同じ大きさのビューを作ります）
        let GraphView: BEMSimpleLineGraphView = BEMSimpleLineGraphView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height))
        // データソースを設定 (今回はこのクラスの中にメソッドを書くので、selfを設定)
        GraphView.dataSource = self
        // delegateを設定 (今回はこのクラスの中にメソッドを書くので、selfを設定)
        GraphView.delegate = self
        // メインビューにグラフのViewを追加
        self.view.addSubview(GraphView)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // グラフのX軸の最大個数を返すメソッドを作成
    func numberOfPointsInLineGraph(graph: BEMSimpleLineGraphView) -> NSInteger {
        // 今回はSampleData配列の数を返します
        return SampleData.count
    }
    
    // Y軸の値を返すメソッドを作成
    func lineGraph(_ graph: BEMSimpleLineGraphView, valueForPointAt index: NSInteger) -> CGFloat {
        //何個目のX軸のポイントかはindexで取得できるので、今回はSampleData配列の中にあるindexの要素をそのまま返します
        return CGFloat(SampleData[index])
    }
    
    // X軸のラベルを返すメソッドを作成
    private func lineGraph(graph: BEMSimpleLineGraphView, labelOnXAxisForIndex index: NSInteger) -> NSString {
        //何個目のX軸のポイントかはindexで取得できるので、今回はSampleLabel配列の中にあるindexの要素をそのまま返します
        return NSString(string: SampleLabel[index])
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
