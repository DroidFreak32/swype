.class Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper$2;
.super Landroid/database/ContentObserver;
.source "ChineseContactsSyncWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "self"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;->access$000(Lcom/nuance/swype/input/chinese/ChineseContactsSyncWrapper;)V

    .line 117
    return-void
.end method
