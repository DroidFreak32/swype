.class final Lcom/google/android/gms/internal/zzfr$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzfr;->zzj(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbll:Ljava/lang/String;

.field final synthetic zzbln:Lcom/google/android/gms/internal/zzfr;

.field final synthetic zzblo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfr$2;->zzbln:Lcom/google/android/gms/internal/zzfr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfr$2;->zzbll:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfr$2;->zzblo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr$2;->zzbln:Lcom/google/android/gms/internal/zzfr;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzfr;->zzbgf:Lcom/google/android/gms/internal/zzlh;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfr$2;->zzbll:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfr$2;->zzblo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzlh;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
