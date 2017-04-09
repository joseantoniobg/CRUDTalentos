using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace CRUDTalentos2.Models
{
    public partial class TalentosContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Data Source=NOTE;Initial Catalog=Talentos;Integrated Security=True;");
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Campos>(entity =>
            {
                entity.HasKey(e => e.IdCampo)
                    .HasName("PK_Table_1");

                entity.Property(e => e.IdCampo).HasColumnName("id_Campo");

                entity.Property(e => e.Campo).HasColumnType("varchar(250)");

                entity.Property(e => e.Classe)
                    .HasColumnName("classe")
                    .HasColumnType("varchar(20)");
            });

            modelBuilder.Entity<CandidatoCampos>(entity =>
            {
                entity.HasKey(e => e.IdCandidatoCampos)
                    .HasName("PK_Candidato_Campos");

                entity.ToTable("Candidato_Campos");

                entity.Property(e => e.IdCandidatoCampos).HasColumnName("id_Candidato_Campos");

                entity.Property(e => e.IdCampo).HasColumnName("id_Campo");

                entity.Property(e => e.IdCandidato).HasColumnName("id_Candidato");

                entity.Property(e => e.Resposta)
                    .IsRequired()
                    .HasColumnType("varchar(200)");

                entity.HasOne(d => d.IdCampoNavigation)
                    .WithMany(p => p.CandidatoCampos)
                    .HasForeignKey(d => d.IdCampo)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_Candidato_Campos_Campos");

                entity.HasOne(d => d.IdCandidatoNavigation)
                    .WithMany(p => p.CandidatoCampos)
                    .HasForeignKey(d => d.IdCandidato)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_Candidato_Campos_Candidatos");
            });

            modelBuilder.Entity<Candidatos>(entity =>
            {
                entity.HasKey(e => e.IdCandidato)
                    .HasName("PK_Candidatos");

                entity.Property(e => e.IdCandidato).HasColumnName("id_Candidato");

                entity.Property(e => e.Cpf)
                    .HasColumnName("CPF")
                    .HasColumnType("char(11)");

                entity.Property(e => e.Email).HasColumnType("varchar(50)");

                entity.Property(e => e.Nome).HasColumnType("varchar(50)");
            });

            modelBuilder.Entity<CandidatosRespostas>(entity =>
            {
                entity.HasKey(e => e.IdCandidatoResposta)
                    .HasName("PK_Candidatos_Respostas");

                entity.ToTable("Candidatos_Respostas");

                entity.Property(e => e.IdCandidatoResposta).HasColumnName("id_Candidato_Resposta");

                entity.Property(e => e.IdCandidato).HasColumnName("id_Candidato");

                entity.Property(e => e.IdReposta).HasColumnName("id_Reposta");

                entity.HasOne(d => d.IdCandidatoNavigation)
                    .WithMany(p => p.CandidatosRespostas)
                    .HasForeignKey(d => d.IdCandidato)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_Candidatos_Respostas_Candidatos");

                entity.HasOne(d => d.IdRepostaNavigation)
                    .WithMany(p => p.CandidatosRespostas)
                    .HasForeignKey(d => d.IdReposta)
                    .HasConstraintName("FK_Candidatos_Respostas_Respostas");
            });

            modelBuilder.Entity<Formularios>(entity =>
            {
                entity.HasKey(e => e.IdFormulario)
                    .HasName("PK_Formularios");

                entity.Property(e => e.IdFormulario).HasColumnName("id_Formulario");

                entity.Property(e => e.Nome).HasColumnType("varchar(30)");
            });

            modelBuilder.Entity<FormulariosCamposPerguntas>(entity =>
            {
                entity.HasKey(e => e.IdFormularioCampoResposta)
                    .HasName("PK_Formularios_Campos_Perguntas");

                entity.ToTable("Formularios_Campos_Perguntas");

                entity.Property(e => e.IdFormularioCampoResposta).HasColumnName("id_Formulario_Campo_Resposta");

                entity.Property(e => e.IdCampo).HasColumnName("id_Campo");

                entity.Property(e => e.IdFormulario).HasColumnName("id_Formulario");

                entity.Property(e => e.IdPergunta).HasColumnName("id_Pergunta");

                entity.HasOne(d => d.IdCampoNavigation)
                    .WithMany(p => p.FormulariosCamposPerguntas)
                    .HasForeignKey(d => d.IdCampo)
                    .HasConstraintName("FK_Formularios_Campos_Perguntas_Campos");

                entity.HasOne(d => d.IdFormularioNavigation)
                    .WithMany(p => p.FormulariosCamposPerguntas)
                    .HasForeignKey(d => d.IdFormulario)
                    .OnDelete(DeleteBehavior.Restrict)
                    .HasConstraintName("FK_Formularios_Campos_Perguntas_Formularios");

                entity.HasOne(d => d.IdPerguntaNavigation)
                    .WithMany(p => p.FormulariosCamposPerguntas)
                    .HasForeignKey(d => d.IdPergunta)
                    .HasConstraintName("FK_Formularios_Campos_Perguntas_Perguntas");
            });

            modelBuilder.Entity<Perguntas>(entity =>
            {
                entity.HasKey(e => e.IdPergunta)
                    .HasName("PK_Perguntas");

                entity.Property(e => e.IdPergunta).HasColumnName("id_Pergunta");

                entity.Property(e => e.Pergunta).HasColumnType("varchar(200)");
            });

            modelBuilder.Entity<Respostas>(entity =>
            {
                entity.HasKey(e => e.IdResposta)
                    .HasName("PK_Respostas");

                entity.Property(e => e.IdResposta).HasColumnName("id_Resposta");

                entity.Property(e => e.IdPergunta).HasColumnName("id_Pergunta");

                entity.Property(e => e.Resposta).HasColumnType("varchar(200)");

                entity.HasOne(d => d.IdPerguntaNavigation)
                    .WithMany(p => p.Respostas)
                    .HasForeignKey(d => d.IdPergunta)
                    .HasConstraintName("FK_Respostas_Perguntas");
            });
        }

        public virtual DbSet<Campos> Campos { get; set; }
        public virtual DbSet<CandidatoCampos> CandidatoCampos { get; set; }
        public virtual DbSet<Candidatos> Candidatos { get; set; }
        public virtual DbSet<CandidatosRespostas> CandidatosRespostas { get; set; }
        public virtual DbSet<Formularios> Formularios { get; set; }
        public virtual DbSet<FormulariosCamposPerguntas> FormulariosCamposPerguntas { get; set; }
        public virtual DbSet<Perguntas> Perguntas { get; set; }
        public virtual DbSet<Respostas> Respostas { get; set; }
    }
}