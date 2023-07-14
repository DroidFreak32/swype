.class public interface abstract Lcom/nuance/connect/internal/Property;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/Property$LongValueListener;,
        Lcom/nuance/connect/internal/Property$BooleanValueListener;,
        Lcom/nuance/connect/internal/Property$StringValueListener;,
        Lcom/nuance/connect/internal/Property$IntegerValueListener;,
        Lcom/nuance/connect/internal/Property$Verifier;,
        Lcom/nuance/connect/internal/Property$ValueListener;,
        Lcom/nuance/connect/internal/Property$Source;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAG_CONNECT_DAT_OVERRIDE_ALLOWED:I = 0x2

.field public static final FLAG_OEM_OVERRIDE_ALLOWED:I = 0x4

.field public static final FLAG_SERVER_OVERRIDE_ALLOWED:I = 0x1

.field public static final VERIFY_NEG_ONE_INT:I = 0x5

.field public static final VERIFY_NON_NEGATIVE_INT:I = 0x4

.field public static final VERIFY_POSITIVE_INT:I = 0x3

.field public static final VERIFY_TYPE:I = 0x1

.field public static final VERIFY_UNKNOWN:I = 0x0

.field public static final VERIFY_URL:I = 0x2


# virtual methods
.method public abstract addListener(Lcom/nuance/connect/internal/Property$ValueListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract addListener(Lcom/nuance/connect/internal/Property$ValueListener;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<TT;>;Z)V"
        }
    .end annotation
.end method

.method public abstract addListeners(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/connect/internal/Property$ValueListener",
            "<TT;>;>;)V"
        }
    .end annotation
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getOverrideFlags()I
.end method

.method public abstract getSource()Lcom/nuance/connect/internal/Property$Source;
.end method

.method public abstract getTypeArgument()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getVerification()I
.end method

.method public abstract set(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
.end method

.method public abstract setOverrideFlags(I)V
.end method

.method public abstract setValue(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/nuance/connect/internal/Property$Source;",
            ")V"
        }
    .end annotation
.end method

.method public abstract verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;)Z
.end method
