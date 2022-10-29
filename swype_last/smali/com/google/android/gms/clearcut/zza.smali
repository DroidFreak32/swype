.class public final Lcom/google/android/gms/clearcut/zza;
.super Ljava/lang/Object;


# static fields
.field private static pX:I

.field public static final pY:Lcom/google/android/gms/clearcut/zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/clearcut/zza;->pX:I

    new-instance v0, Lcom/google/android/gms/clearcut/zza;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/zza;->pY:Lcom/google/android/gms/clearcut/zza;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzbk(Landroid/content/Context;)I
    .registers 4

    sget v0, Lcom/google/android/gms/clearcut/zza;->pX:I

    if-gez v0, :cond_16

    const-string/jumbo v0, "bootCount"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "bootCount"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/android/gms/clearcut/zza;->pX:I

    :cond_16
    sget v0, Lcom/google/android/gms/clearcut/zza;->pX:I

    return v0
.end method
