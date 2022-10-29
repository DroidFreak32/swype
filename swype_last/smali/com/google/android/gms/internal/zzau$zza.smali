.class public final Lcom/google/android/gms/internal/zzau$zza;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzau;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzage:Lcom/google/android/gms/internal/zzau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzau;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzau$zza;->zzage:Lcom/google/android/gms/internal/zzau;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzau$zza;->zzage:Lcom/google/android/gms/internal/zzau;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
