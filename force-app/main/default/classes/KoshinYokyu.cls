public class KoshinYokyu {

   // ￤ＳＹＳ＿外部キー
   public String gaibuKey {get;set;} 
   
   // 重要メモ内容
   public String juyoMemoNaiyo {get;set;}
  
    /**
     * テスト実行結果メッセージ
     */
    public Map<String,String> messagesMap {get; set;}
    /**
     * コンストラクタ
     */
    public KoshinYokyu () {
        // テスト実行結果メッセージ
        messagesList = new List<T_T_TEKoshinYokyu__c>();
    }
    public void insKoshinYokyuOne() {
    	String appId = 'BS2J020107';
    	//お客様を取得
    	Contact con = [SELECT Id FROM Contact WHERE GaibuKey__c = '20105_C005' LIMIT 1];
    	T_T_TEJuyoMemo__c memo = new T_T_TEJuyoMemo__c();
    	memo.GaibuKey__c = gaibuKey;
        memo.Okyakusama__c = con.Id;
        memo.JuyoMemoNaiyo__c = juyoMemoNaiyo;
        Database.SaveResult sr = T_T_TEJuyoMemoDao.getInstance(appId).insertRecord(memo);
        this.messagesList = KoshinYokyuTaisyoManagement.koshinYokyuTaisyoList;
    }
   
}