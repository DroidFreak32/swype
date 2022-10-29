.class Lcom/nuance/swype/input/emoji/EmojiInputController$1;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;->createAdapter(Lcom/nuance/swype/input/emoji/EmojiGridParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/nuance/swype/input/emoji/Emoji;)V
    .registers 15
    .param p1, "item"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 280
    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v9, "onSelect()"

    aput-object v9, v8, v10

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 281
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$200(Lcom/nuance/swype/input/emoji/EmojiInputController;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    .line 283
    .local v2, "ime":Lcom/nuance/swype/input/IME;
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->catIter:Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;
    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$300(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup$Iterator;->getCategory()Lcom/nuance/swype/input/emoji/EmojiCategory;

    move-result-object v0

    .line 284
    .local v0, "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    instance-of v7, v0, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    if-eqz v7, :cond_5d

    .line 285
    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "onSelect(): "

    aput-object v9, v8, v10

    const-string/jumbo v9, " called : if >>> "

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 287
    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    .end local v0    # "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    invoke-virtual {v0, p1, v10}, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->add(Lcom/nuance/swype/input/emoji/Emoji;Z)V

    .line 288
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;
    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$400(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->refreshDynamicPages()V

    .line 290
    sget-object v7, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->RECENT:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    invoke-static {v7}, Lcom/nuance/swype/usagedata/UsageData;->recordEmojiSelected(Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;)V

    .line 304
    :goto_53
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v7, v8, v9}, Lcom/nuance/swype/input/IME;->onText(Ljava/lang/CharSequence;J)V

    .line 306
    return-void

    .line 292
    .restart local v0    # "cat":Lcom/nuance/swype/input/emoji/EmojiCategory;
    :cond_5d
    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "onSelect(): "

    aput-object v9, v8, v10

    const-string/jumbo v9, " called : else >>>>>>"

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 293
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;
    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$500(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getRecentCat()Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    move-result-object v6

    .line 295
    .local v6, "recents":Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;
    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$400(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->getGroup()Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;

    move-result-object v1

    .line 296
    .local v1, "group":Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->categoryList:Lcom/nuance/swype/input/emoji/EmojiCategoryList;
    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$500(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiCategoryList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/emoji/EmojiCategoryList;->getRecentCat()Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;

    move-result-object v5

    .line 297
    .local v5, "recentCat":Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;
    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getPageCount(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v4

    .line 298
    .local v4, "oldCount":I
    invoke-virtual {v5, p1, v10}, Lcom/nuance/swype/input/emoji/EmojiCategoryRecents;->add(Lcom/nuance/swype/input/emoji/Emoji;Z)V

    .line 299
    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/emoji/EmojiCategoryGroup;->getPageCount(Lcom/nuance/swype/input/emoji/EmojiCategory;)I

    move-result v3

    .line 300
    .local v3, "newCount":I
    iget-object v7, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->adapter:Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;
    invoke-static {v7}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$400(Lcom/nuance/swype/input/emoji/EmojiInputController;)Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;

    move-result-object v7

    invoke-virtual {v7, v5, v4, v3}, Lcom/nuance/swype/input/emoji/EmojiPagerAdapter;->onCategoryChanged(Lcom/nuance/swype/input/emoji/EmojiCategory;II)V

    .line 301
    sget-object v7, Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;->PICKER:Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;

    invoke-static {v7}, Lcom/nuance/swype/usagedata/UsageData;->recordEmojiSelected(Lcom/nuance/swype/usagedata/UsageData$EmojiSelectedSource;)V

    goto :goto_53
.end method

.method public playFeedback(Ljava/lang/String;Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;)V
    .registers 5
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "feedback"    # Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    .prologue
    .line 267
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiInputController$8;->$SwitchMap$com$nuance$swype$input$emoji$EmojiPageView$EmojiFeedback:[I

    invoke-virtual {p2}, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 276
    :goto_b
    return-void

    .line 270
    :pswitch_c
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$1;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->playKeyFeedback(I)V

    goto :goto_b

    .line 267
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
