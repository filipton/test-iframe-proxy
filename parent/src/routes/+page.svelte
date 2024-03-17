<script lang="ts">
    import { page } from "$app/stores";

    let base = "http://localhost:6969";
    let path = $page.url.pathname;
</script>

<iframe
    on:error={(e) => console.log(e)}
    on:load={(e) => console.log(e)}
    src="{base}{path}"
    width="100%"
    height="100%"
    title=""
></iframe>
