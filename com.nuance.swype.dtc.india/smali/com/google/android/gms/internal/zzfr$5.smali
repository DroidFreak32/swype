.class final Lcom/google/android/gms/internal/zzfr$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfr;->zzbh(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbli:Ljava/lang/String;

.field final synthetic zzbln:Lcom/google/android/gms/internal/zzfr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfr;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfr$5;->zzbln:Lcom/google/android/gms/internal/zzfr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfr$5;->zzbli:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr$5;->zzbln:Lcom/google/android/gms/internal/zzfr;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfr;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr$5;->zzbli:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzlh;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
