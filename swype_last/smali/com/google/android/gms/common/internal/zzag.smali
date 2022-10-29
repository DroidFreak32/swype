.class public final Lcom/google/android/gms/common/internal/zzag;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static zza([Lcom/google/android/gms/common/api/Scope;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 0
    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    array-length v3, p0

    move v2, v0

    :goto_7
    if-ge v2, v3, :cond_4

    aget-object v4, p0, v2

    .line 1000
    iget-object v4, v4, Lcom/google/android/gms/common/api/Scope;->sp:Ljava/lang/String;

    .line 0
    const-string/jumbo v5, "/plus."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string/jumbo v5, "https://www.googleapis.com/auth/plus.me"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    const-string/jumbo v5, "https://www.googleapis.com/auth/games"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move v0, v1

    goto :goto_4

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public static zzd(III)I
    .registers 6

    packed-switch p0, :pswitch_data_22

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unknown button size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    move p2, p1

    :pswitch_20
    return p2

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method

.method public static zzg(IIII)I
    .registers 7

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unknown color scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1f
    move p1, p2

    :goto_20
    :pswitch_20
    return p1

    :pswitch_21
    move p1, p3

    goto :goto_20

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_21
    .end packed-switch
.end method
