.class public final Lcom/google/android/gms/internal/zzju$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final errorCode:I

.field public final zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final zzcie:Lorg/json/JSONObject;

.field public final zzcig:Lcom/google/android/gms/internal/zzga;

.field public final zzcik:J

.field public final zzcil:J

.field public final zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field public final zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/ads/internal/request/AdResponseParcel;Lcom/google/android/gms/internal/zzga;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;IJJLorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcip:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzju$zza;->zzciq:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcig:Lcom/google/android/gms/internal/zzga;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzju$zza;->zzapa:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput p5, p0, Lcom/google/android/gms/internal/zzju$zza;->errorCode:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcik:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcil:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzju$zza;->zzcie:Lorg/json/JSONObject;

    return-void
.end method
