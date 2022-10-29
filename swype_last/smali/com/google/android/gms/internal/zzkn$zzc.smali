.class final Lcom/google/android/gms/internal/zzkn$zzc;
.super Lcom/google/android/gms/internal/zzkv;

# interfaces
.implements Lcom/google/android/gms/internal/zzm$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzkv",
        "<TT;>;",
        "Lcom/google/android/gms/internal/zzm$zzb",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzcmg:Lcom/google/android/gms/internal/zzkn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzkn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkn$zzc;->zzcmg:Lcom/google/android/gms/internal/zzkn;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzkn;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzkn$zzc;-><init>(Lcom/google/android/gms/internal/zzkn;)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzkv;->zzh(Ljava/lang/Object;)V

    return-void
.end method
