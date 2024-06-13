package main

import (
	"log/slog"
)

func main() {
	slog.Info("consumer")
	slog.Warn("consumer")
	slog.Error("consumer")
}
