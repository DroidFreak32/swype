.class Lcom/nuance/swype/input/settings/AccountPrefs$4;
.super Ljava/lang/Object;
.source "AccountPrefs.java"

# interfaces
.implements Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field accepted:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AccountPrefs;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$4;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$4;->accepted:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public accepted()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$4;->accepted:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$4;->accepted:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 174
    :cond_9
    return-void
.end method

.method public presentLegalRequirements(ZZLjava/lang/Runnable;)Z
    .registers 7
    .param p1, "tosRequired"    # Z
    .param p2, "optInRequired"    # Z
    .param p3, "accepted"    # Ljava/lang/Runnable;

    .prologue
    .line 164
    iput-object p3, p0, Lcom/nuance/swype/input/settings/AccountPrefs$4;->accepted:Ljava/lang/Runnable;

    .line 165
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$4;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    # invokes: Lcom/nuance/swype/input/settings/AccountPrefs;->showLegalRequirements(IZZLandroid/os/Bundle;)Z
    invoke-static {v0, v1, p1, p2, v2}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$200(Lcom/nuance/swype/input/settings/AccountPrefs;IZZLandroid/os/Bundle;)Z

    .line 166
    const/4 v0, 0x0

    return v0
.end method
