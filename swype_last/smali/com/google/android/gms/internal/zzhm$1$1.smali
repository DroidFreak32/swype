.class final Lcom/google/android/gms/internal/zzhm$1$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhm$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzasu:Landroid/webkit/WebView;

.field final synthetic zzbwl:Lcom/google/android/gms/internal/zzhm$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhm$1;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhm$1$1;->zzbwl:Lcom/google/android/gms/internal/zzhm$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhm$1$1;->zzasu:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "Loading assets have finished"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcv(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm$1$1;->zzbwl:Lcom/google/android/gms/internal/zzhm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhm$1;->zzbwk:Lcom/google/android/gms/internal/zzhm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhm;->zzbwh:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhm$1$1;->zzasu:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v0, "Loading assets have failed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkd;->zzcx(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhm$1$1;->zzbwl:Lcom/google/android/gms/internal/zzhm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhm$1;->zzbwk:Lcom/google/android/gms/internal/zzhm;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhm;->zzbwh:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhm$1$1;->zzasu:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
