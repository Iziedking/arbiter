import js from '@eslint/js';
import tseslint from 'typescript-eslint';

export default [
  {
    ignores: [
      '**/node_modules/**',
      '**/dist/**',
      '**/.next/**',
      '**/.turbo/**',
      '**/out/**',
      '**/coverage/**',
      'packages/contracts/**',
    ],
  },
  js.configs.recommended,
  ...tseslint.configs.recommended,
];
