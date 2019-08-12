.class Lcom/nuance/swype/input/settings/ChinesePrefs$3;
.super Ljava/lang/Object;
.source "ChinesePrefs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;->retrieveDictionaryNamesInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 236
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$002(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;

    .line 238
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$102(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;

    .line 239
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$202(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;

    .line 240
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$300(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/input/CategoryDBList;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$400(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 241
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v6}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$300(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/input/CategoryDBList;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v7}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$400(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v7

    iget-object v7, v7, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/CategoryDBList;->getShowableCDBs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$002(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;)Ljava/util/List;

    .line 244
    :cond_0
    const/4 v4, 0x0

    .line 245
    .local v4, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 246
    .local v2, "description":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 247
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, "cdb":Ljava/lang/String;
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$300(Lcom/nuance/swype/input/settings/ChinesePrefs;)Lcom/nuance/swype/input/CategoryDBList;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/nuance/swype/input/CategoryDBList;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "cdbName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$500(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    if-eqz v4, :cond_1

    .line 255
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 260
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$100(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5, v1}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$600(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_3

    .line 263
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 265
    :cond_3
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v5}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$200(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 267
    .end local v0    # "cdb":Ljava/lang/String;
    .end local v1    # "cdbName":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v6, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v6}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$000(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v7}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$100(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$3;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-static {v8}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$200(Lcom/nuance/swype/input/settings/ChinesePrefs;)Ljava/util/List;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$700(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 269
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method
