.class final Lcom/google/android/gms/internal/zzdh$2;
.super Lcom/google/android/gms/internal/zzdh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p2

    goto :goto_2
.end method
