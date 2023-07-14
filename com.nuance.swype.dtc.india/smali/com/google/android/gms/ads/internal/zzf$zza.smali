.class public Lcom/google/android/gms/ads/internal/zzf$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzakq:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzf$zza;->zzakq:Lcom/google/android/gms/ads/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzf$zza;->zzakq:Lcom/google/android/gms/ads/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzf;->onAdClicked()V

    return-void
.end method
