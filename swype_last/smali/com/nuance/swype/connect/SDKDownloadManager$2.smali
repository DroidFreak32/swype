.class Lcom/nuance/swype/connect/SDKDownloadManager$2;
.super Ljava/lang/Object;
.source "SDKDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/connect/SDKDownloadManager;->init()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/SDKDownloadManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/SDKDownloadManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/connect/SDKDownloadManager;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageListUpdate()V
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKDownloadManager$2;->this$0:Lcom/nuance/swype/connect/SDKDownloadManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKDownloadManager;->setupLanguages()V

    .line 145
    return-void
.end method
