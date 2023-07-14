.class Lcom/nuance/swype/input/settings/ChinesePrefs$7;
.super Ljava/lang/Object;
.source "ChinesePrefs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;->updateCDBInWorkerThread(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

.field final synthetic val$cdbs:Ljava/util/List;

.field final synthetic val$descriptions:Ljava/util/List;

.field final synthetic val$names:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->val$cdbs:Ljava/util/List;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->val$names:Ljava/util/List;

    iput-object p4, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->val$descriptions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->val$cdbs:Ljava/util/List;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->val$names:Ljava/util/List;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$7;->val$descriptions:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/ChinesePrefs;->access$1300(Lcom/nuance/swype/input/settings/ChinesePrefs;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 449
    return-void
.end method
