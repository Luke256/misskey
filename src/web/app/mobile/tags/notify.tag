<mk-notify>
	<mk-notification-preview notification={ opts.notification }></mk-notification-preview>
	<style>
		:scope
			display block
			position fixed
			z-index 1024
			bottom -64px
			left 0
			width 100%
			height 64px
			pointer-events none
			-webkit-backdrop-filter blur(2px)
			backdrop-filter blur(2px)
			background-color rgba(#000, 0.5)

	</style>
	<script>
		this.on('mount', () => {
			Velocity this.root, {
				bottom: '0px' 
			} {
				duration: 500ms
				easing: 'ease-out' 
			}

			setTimeout =>
				Velocity this.root, {
					bottom: '-64px' 
				} {
					duration: 500ms
					easing: 'ease-out' 
					complete: =>
						this.unmount();
				}
			, 6000ms
	</script>
</mk-notify>
