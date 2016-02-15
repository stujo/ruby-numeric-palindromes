require 'spec_helper'
require_relative '../numeric_palindromes'

describe NumericPalindromes do
	describe '#upto' do
		let(:upto_101){ NumericPalindromes.upto(101).take(200)}
		let(:upto_333){ NumericPalindromes.upto(333).take(200)}
		let(:upto_4444){ NumericPalindromes.upto(4444).take(500)}

		it 'yields up to 33' do
			expect(NumericPalindromes.upto(33).take(200).last).to eq 33
		end
		it 'yields up to 101' do
			expect(upto_101.last).to eq 101
		end
		it 'yields up to 111' do
			expect(NumericPalindromes.upto(111).take(200).last).to eq 111
		end

		it '111 is the 21st Palindrome' do
			expect(upto_333.take(21).last).to eq 111
		end

		it '333 is the 43rd Palindrome' do
			expect(upto_333.take(43).last).to eq 333
		end

		it '4444 is the 144rd Palindrome' do
			expect(upto_4444.take(144).last).to eq 4444
		end

		it '999999999 is the 109999th Palindrome' do
			expect(NumericPalindromes.upto(999999999).take(109999).last).to eq 999999999
		end

		it 'always increases' do

			NumericPalindromes.upto(999999999).take(1000000).inject(-1) do |memo,value|
				expect(value).to be > memo
				value
			end
		end
	end


end

