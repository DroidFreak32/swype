.class final Lcom/google/android/gms/internal/zzhm$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhm;->zza$14e1ec6d(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbwi:Ljava/lang/String;

.field final synthetic zzbwj:Ljava/lang/String;

.field final synthetic zzbwk:Lcom/google/android/gms/internal/zzhm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhm;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhm$1;->zzbwk:Lcom/google/android/gms/internal/zzhm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhm$1;->zzbwi:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhm$1;->zzbwj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhm$1;->zzbwk:Lcom/google/android/gms/internal/zzhm;

    .line 1000
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 0
    new-instance v1, Lcom/google/android/gms/internal/zzhm$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzhm$1$1;-><init>(Lcom/google/android/gms/internal/zzhm$1;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhm$1;->zzbwk:Lcom/google/android/gms/internal/zzhm;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhm;->zzbwh:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhm$1;->zzbwi:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhm$1;->zzbwj:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Fetching assets finished."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    return-void
.end method
