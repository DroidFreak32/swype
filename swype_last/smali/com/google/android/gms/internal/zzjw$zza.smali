.class final Lcom/google/android/gms/internal/zzjw$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private final zzcji:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcjj:Landroid/os/Bundle;

.field final synthetic zzcjk:Lcom/google/android/gms/internal/zzjw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzjw;Ljava/util/List;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjw$zza;->zzcjk:Lcom/google/android/gms/internal/zzjw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjw$zza;->zzcji:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjw$zza;->zzcjj:Landroid/os/Bundle;

    return-void
.end method
