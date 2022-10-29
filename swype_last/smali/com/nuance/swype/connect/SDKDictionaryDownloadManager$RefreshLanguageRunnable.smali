.class final Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;
.super Ljava/lang/Object;
.source "SDKDictionaryDownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKDictionaryDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RefreshLanguageRunnable"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final languageId:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "languageId"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;->context:Landroid/content/Context;

    .line 57
    iput p2, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;->languageId:I

    .line 58
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 63
    :try_start_0
    new-instance v0, Lcom/nuance/swype/input/CategoryDBList;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/nuance/swype/input/CategoryDBList;-><init>(Landroid/content/Context;)V

    .line 64
    iget v1, p0, Lcom/nuance/swype/connect/SDKDictionaryDownloadManager$RefreshLanguageRunnable;->languageId:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/CategoryDBList;->postInstallRefresh(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 67
    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method
