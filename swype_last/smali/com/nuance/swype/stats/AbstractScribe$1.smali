.class Lcom/nuance/swype/stats/AbstractScribe$1;
.super Ljava/lang/Object;
.source "AbstractScribe.java"

# interfaces
.implements Lcom/nuance/swype/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/stats/AbstractScribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/stats/AbstractScribe;


# direct methods
.method constructor <init>(Lcom/nuance/swype/stats/AbstractScribe;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/stats/AbstractScribe;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/nuance/swype/stats/AbstractScribe$1;->this$0:Lcom/nuance/swype/stats/AbstractScribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe$1;->this$0:Lcom/nuance/swype/stats/AbstractScribe;

    iget-object v1, v1, Lcom/nuance/swype/stats/AbstractScribe;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 36
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v0, :cond_2e

    .line 37
    iget-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe$1;->this$0:Lcom/nuance/swype/stats/AbstractScribe;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentApplicationName()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/nuance/swype/stats/AbstractScribe;->currentApplication:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/nuance/swype/stats/AbstractScribe;->access$002(Lcom/nuance/swype/stats/AbstractScribe;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe$1;->this$0:Lcom/nuance/swype/stats/AbstractScribe;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentFieldInfo()I

    move-result v2

    # setter for: Lcom/nuance/swype/stats/AbstractScribe;->currentFieldInfo:I
    invoke-static {v1, v2}, Lcom/nuance/swype/stats/AbstractScribe;->access$102(Lcom/nuance/swype/stats/AbstractScribe;I)I

    .line 39
    iget-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe$1;->this$0:Lcom/nuance/swype/stats/AbstractScribe;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    # setter for: Lcom/nuance/swype/stats/AbstractScribe;->currentLanguage:Lcom/nuance/swype/input/InputMethods$Language;
    invoke-static {v1, v2}, Lcom/nuance/swype/stats/AbstractScribe;->access$202(Lcom/nuance/swype/stats/AbstractScribe;Lcom/nuance/swype/input/InputMethods$Language;)Lcom/nuance/swype/input/InputMethods$Language;

    .line 40
    iget-object v1, p0, Lcom/nuance/swype/stats/AbstractScribe$1;->this$0:Lcom/nuance/swype/stats/AbstractScribe;

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getScribeFilter()Lcom/nuance/swype/stats/ScribeFilter;

    move-result-object v2

    # setter for: Lcom/nuance/swype/stats/AbstractScribe;->filter:Lcom/nuance/swype/stats/ScribeFilter;
    invoke-static {v1, v2}, Lcom/nuance/swype/stats/AbstractScribe;->access$302(Lcom/nuance/swype/stats/AbstractScribe;Lcom/nuance/swype/stats/ScribeFilter;)Lcom/nuance/swype/stats/ScribeFilter;

    .line 42
    :cond_2e
    return-void
.end method
