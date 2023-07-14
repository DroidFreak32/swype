.class final Lcom/google/android/gms/internal/zzeq$zzd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field final zzbfi:Ljava/lang/String;

.field final zzbii:Ljava/lang/String;

.field final zzbip:I

.field final zzbiq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzeq$zza;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzeq$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeq$zzd;->zzbii:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzeq$zzd;->zzbip:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeq$zzd;->zzbiq:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeq$zzd;->zzbfi:Ljava/lang/String;

    return-void
.end method
