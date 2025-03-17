.PHONY: run_meltano add_tap_quickbooks add_target_jsonl clear_output

add_tap_quickbooks:
	@echo "Adding tap-quickbooks"
	@meltano add extractor tap-quickbooks
	@echo "tap-quickbooks added"

remove_tap_quickbooks:
	@echo "Removing tap-quickbooks"
	@meltano remove extractor tap-quickbooks
	@echo "tap-quickbooks removed"

add_target_jsonl:
	@echo "Adding target-jsonl"
	@meltano add loader target-jsonl
	@echo "target-jsonl added"

remove_target_jsonl:
	@echo "Removing target-jsonl"
	@meltano remove loader target-jsonl
	@echo "target-jsonl removed"

run_meltano:
	@echo "Running Meltano"
	@uv run meltano run tap-quickbooks target-jsonl
	@echo "Meltano run completed"

# clear all the files in output folder except for .gitingore
clear_output:
	@echo "Clearing output folder"
	@find output -type f -not -name '.gitignore' -delete
	@echo "Output folder cleared"