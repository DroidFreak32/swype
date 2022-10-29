.class final Lcom/google/android/gms/internal/zzcj$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzla$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzju;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;Lcom/google/android/gms/internal/zzfs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzart:Lcom/google/android/gms/internal/zzcj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcj$4;->zzart:Lcom/google/android/gms/internal/zzcj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcj$4;->zzart:Lcom/google/android/gms/internal/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcj;->destroy()V

    return-void
.end method
