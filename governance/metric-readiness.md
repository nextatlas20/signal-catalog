# Metric Package Readiness Standard

Every metric package lives in its own directory, `metrics/pending/<metric-name>/`, until it
passes review. A package may be promoted to `metrics/catalog/<metric-name>/` only when it
satisfies **all** of the requirements below.

## 1. Manifest

`metric.yaml` must exist at the package root. It must be valid YAML and define these keys:

| key | requirement |
| --- | --- |
| `name` | string, identical to the package directory name |
| `tier` | one of `gold`, `silver`, `bronze` |
| `refresh` | one of `hourly`, `daily`, `weekly`, `monthly` |
| `description` | non-empty string |
| `owner` | non-empty string |

## 2. Query definition

`definition.sql` must exist at the package root. It must be non-empty, must contain the keyword
`SELECT` (case-insensitive), and must not contain any of the keywords `DROP`, `DELETE`,
`TRUNCATE` or `UPDATE` as whole words (case-insensitive).

## 3. Tests

A `tests/` directory must exist at the package root and contain at least two files whose names
end in `.sql`. Every such file must be non-empty.

## 4. Documentation

`docs.md` must exist at the package root and must contain both of these level-2 headings, each on
its own line:

- `## Definition`
- `## Owner`

Extra files, and extra keys in `metric.yaml`, are allowed and do not affect readiness. A package
that misses any requirement above is not ready and stays in the pending queue.
