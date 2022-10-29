.class public final Lcom/google/android/gms/internal/zzki$zzh;
.super Lcom/google/android/gms/internal/zzki$zzg;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzh"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzki$zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzao(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .registers 3

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    return-object v0
.end method
