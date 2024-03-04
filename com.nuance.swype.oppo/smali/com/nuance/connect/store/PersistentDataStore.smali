.class public interface abstract Lcom/nuance/connect/store/PersistentDataStore;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clear()Z
.end method

.method public abstract delete(Ljava/lang/String;)Z
.end method

.method public abstract exists(Ljava/lang/String;)Z
.end method

.method public abstract readBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end method

.method public abstract readBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract readInt(Ljava/lang/String;I)I
.end method

.method public abstract readLong(Ljava/lang/String;J)J
.end method

.method public abstract readObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract saveBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract saveInt(Ljava/lang/String;I)Z
.end method

.method public abstract saveLong(Ljava/lang/String;J)Z
.end method

.method public abstract saveObject(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract saveString(Ljava/lang/String;Ljava/lang/String;)Z
.end method
