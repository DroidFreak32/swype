.class final Lcom/nuance/swype/startup/ChooseLanguageDelegate$3;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "ChooseLanguageDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageDelegate;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$3;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onInitialized()V
    .registers 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/nuance/swype/connect/ConnectedStatus;->onInitialized()V

    .line 106
    return-void
.end method
