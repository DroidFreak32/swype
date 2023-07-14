.class final Lcom/google/android/gms/internal/zzig$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzig;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzakt:Lcom/google/android/gms/internal/zzju;

.field final synthetic zzbys:Lcom/google/android/gms/internal/zzig;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzig;Lcom/google/android/gms/internal/zzju;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzig$1;->zzbys:Lcom/google/android/gms/internal/zzig;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzig$1;->zzakt:Lcom/google/android/gms/internal/zzju;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzig$1;->zzbys:Lcom/google/android/gms/internal/zzig;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/internal/zzig;->zzbxq:Lcom/google/android/gms/internal/zzic$zza;

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzig$1;->zzakt:Lcom/google/android/gms/internal/zzju;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzic$zza;->zzb(Lcom/google/android/gms/internal/zzju;)V

    return-void
.end method
