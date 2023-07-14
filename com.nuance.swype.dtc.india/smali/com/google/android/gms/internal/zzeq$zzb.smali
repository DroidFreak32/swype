.class final Lcom/google/android/gms/internal/zzeq$zzb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzin;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field final zzbii:Ljava/lang/String;

.field final zzbij:Ljava/net/URL;

.field final zzbik:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzeq$zza;",
            ">;"
        }
    .end annotation
.end field

.field final zzbil:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/zzeq$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeq$zzb;->zzbii:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeq$zzb;->zzbij:Ljava/net/URL;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeq$zzb;->zzbik:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzeq$zzb;->zzbil:Ljava/lang/String;

    return-void
.end method
