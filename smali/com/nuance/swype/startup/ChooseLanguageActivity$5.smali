.class final Lcom/nuance/swype/startup/ChooseLanguageActivity$5;
.super Ljava/lang/Object;
.source "ChooseLanguageActivity.java"

# interfaces
.implements Lcom/nuance/swype/connect/SDKDownloadManager$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/ChooseLanguageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/ChooseLanguageActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$5;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final languageUpdated(I)V
    .locals 0
    .param p1, "languageId"    # I

    .prologue
    .line 135
    return-void
.end method

.method public final listUpdated()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/nuance/swype/startup/ChooseLanguageActivity$5;->this$0:Lcom/nuance/swype/startup/ChooseLanguageActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/ChooseLanguageActivity;->onListUpdated()V

    .line 131
    return-void
.end method
