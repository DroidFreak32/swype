.class Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/GenericProperty$IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleIntegerProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x767dd3f5ccf6362aL


# instance fields
.field source:Ljava/lang/String;

.field value:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Lcom/nuance/connect/internal/Property$Source;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;->value:Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/nuance/connect/internal/Property$Source;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getSource()Lcom/nuance/connect/internal/Property$Source;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;->source:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/connect/internal/Property$Source;->from(Ljava/lang/String;)Lcom/nuance/connect/internal/Property$Source;

    move-result-object v0

    return-object v0
.end method

.method getValue()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/internal/GenericProperty$IntegerProperty$SimpleIntegerProperty;->value:Ljava/lang/Integer;

    return-object v0
.end method
