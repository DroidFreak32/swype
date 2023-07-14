.class final Lcom/nuance/swype/startup/ChooseLanguageDelegate$1;
.super Ljava/lang/Object;
.source "ChooseLanguageDelegate.java"

# interfaces
.implements Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ChooseLanguageDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$1;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final languageUpdated(I)V
    .locals 0
    .param p1, "languageId"    # I

    .prologue
    .line 62
    return-void
.end method

.method public final listUpdated()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageDelegate$1;->this$0:Lcom/nuance/swype/startup/ChooseLanguageDelegate;

    invoke-static {v0}, Lcom/nuance/swype/startup/ChooseLanguageDelegate;->access$000(Lcom/nuance/swype/startup/ChooseLanguageDelegate;)V

    .line 58
    return-void
.end method

.method public final onError(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 67
    return-void
.end method
