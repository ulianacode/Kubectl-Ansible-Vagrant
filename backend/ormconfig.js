module.exports = {
  type: `mysql`,
  host: process.env.MYSQL_HOST || `mysql_db`,
  port: parseInt(process.env.MYSQL_PORT, 10) || 3306,
  username: `root`,
  password: `root`,
  database: `tradeoffer_db`,
  entities: [`dist/**/*.entity{.ts,.js}`],
  subscribers: [`dist/**/*.subscriber{.ts,.js}`],
  synchronize: false,
  migrationsRun: true,
  logging: true,
  logger: `file`,
  migrationsTableName: `migrations_typeorm`,
  migrations: [`dist/src/db/migrations/*{.ts,.js}`],
  cli: {
    migrationsDir: `src/db/migrations`,
  },
};
