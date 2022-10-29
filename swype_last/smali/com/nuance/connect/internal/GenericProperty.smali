.class public Lcom/nuance/connect/internal/GenericProperty;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/internal/GenericProperty$DefaultLongVerifier;,
        Lcom/nuance/connect/internal/GenericProperty$DefaultStringVerifier;,
        Lcom/nuance/connect/internal/GenericProperty$DefaultBooleanVerifier;,
        Lcom/nuance/connect/internal/GenericProperty$DefaultIntegerVerifier;,
        Lcom/nuance/connect/internal/GenericProperty$LongProperty;,
        Lcom/nuance/connect/internal/GenericProperty$StringProperty;,
        Lcom/nuance/connect/internal/GenericProperty$BooleanProperty;,
        Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;
    }
.end annotation


# instance fields
.field protected reference:Lcom/nuance/connect/internal/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/internal/Property",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
