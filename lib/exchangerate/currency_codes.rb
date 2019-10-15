# frozen_string_literal: true

module Exchangerate
  module CurrencyCodes
    # Currency codes with full name and supported countries
    CODES = {
      'AED' => { name: 'UAE Dirham', countries: ['United Arab Emirates'] },
      'ARS' => { name: 'Argentine Peso', countries: ['Argentina'] },
      'AUD' => { name: 'Australian Dollar', countries: ['Australia'] },
      'BGN' => { name: 'Bulgarian Lev', countries: ['Bulgaria'] },
      'BRL' => { name: 'Brazilian Real', countries: ['Brazil'] },
      'BSD' => { name: 'Bahamian Dollar', countries: ['Bahamas'] },
      'CAD' => { name: 'Canadian Dollar', countries: ['Canada'] },
      'CHF' => { name: 'Swiss Franc', countries: ['Switzerland'] },
      'CLP' => { name: 'Chilean Peso', countries: ['Chile'] },
      'CNY' => { name: 'Chinese Renminbi', countries: ['China'] },
      'COP' => { name: 'Colombian Peso', countries: ['Colombia'] },
      'CZK' => { name: 'Czech Koruna', countries: ['Czech Republic'] },
      'DKK' => { name: 'Danish Krone', countries: ['Denmark'] },
      'DOP' => { name: 'Dominican Peso', countries: ['Dominican Republic'] },
      'EGP' => { name: 'Egyptian Pound', countries: ['Egypt'] },
      'EUR' =>
      { name: 'Euro',
        countries: %w[Germany
                      Austria
                      Belgium
                      Cyprus
                      Estonia
                      Finland
                      France
                      Greece
                      Ireland
                      Italy
                      Latvia
                      Lithuania
                      Luxembourg
                      Malta
                      Netherlands
                      Portugal
                      Slovakia
                      Slovenia
                      Spain] },
      'FJD' => { name: 'Fiji Dollar', countries: ['Fiji'] },
      'GBP' => { name: 'Pound Sterling', countries: ['United Kingdom'] },
      'GTQ' => { name: 'Guatemalan Quetzal', countries: ['Guatemala'] },
      'HKD' => { name: 'Hong Kong Dollar', countries: ['Hong Kong'] },
      'HRK' => { name: 'Croatian Kuna', countries: ['Croatian'] },
      'HUF' => { name: 'Hungarian Forint', countries: ['Hungary'] },
      'IDR' => { name: 'Indonesian Rupiah', countries: ['Indonesia'] },
      'ILS' => { name: 'Israeli Shekel', countries: ['Israel'] },
      'INR' => { name: 'Indian Rupee', countries: ['India'] },
      'ISK' => { name: 'Icelandic Krona', countries: ['Iceland'] },
      'JPY' => { name: 'Japanese Yen', countries: ['Japan'] },
      'KRW' => { name: 'South Korean Won', countries: ['Korea'] },
      'KZT' => { name: 'Kazakhstani Tenge', countries: ['Kazakhstan'] },
      'MXN' => { name: 'Mexican Peso', countries: ['Mexico'] },
      'MYR' => { name: 'Malaysian Ringgit', countries: ['Malaysia'] },
      'NOK' => { name: 'Norwegian Krone', countries: ['Norway'] },
      'NZD' => { name: 'New Zealand Dollar', countries: ['New Zealand'] },
      'PAB' => { name: 'Panamanian Balboa', countries: ['Panama'] },
      'PEN' => { name: 'Peruvian Nuevo Sol', countries: ['Peru'] },
      'PHP' => { name: 'Philippine Peso', countries: ['Philippines'] },
      'PKR' => { name: 'Pakistani Rupee', countries: ['Pakistan'] },
      'PLN' => { name: 'Polish Zloty', countries: ['Poland'] },
      'PYG' => { name: 'Paraguayan Guarani', countries: ['Paraguay'] },
      'RON' => { name: 'Romanian Leu', countries: ['Romania'] },
      'RUB' => { name: 'Russian Ruble', countries: ['Russian Federation'] },
      'SAR' => { name: 'Saudi Riyal', countries: ['Saudi Arabia'] },
      'SEK' => { name: 'Swedish Krona', countries: ['Sweden'] },
      'SGD' => { name: 'Singapore Dollar', countries: ['Singapore'] },
      'THB' => { name: 'Thai Baht', countries: ['Thailand'] },
      'TRY' => { name: 'Turkish Lira', countries: ['Turkey'] },
      'TWD' => { name: 'New Taiwan Dollar', countries: ['Taiwan'] },
      'UAH' => { name: 'Ukrainian Hryvnia', countries: ['Ukraine'] },
      'USD' => { name: 'US Dollar', countries: ['United States'] },
      'UYU' => { name: 'Uruguayan Peso', countries: ['Uruguay'] },
      'VND' => { name: 'Vietnamese Dong', countries: ['Vietnam'] },
      'ZAR' => { name: 'South African Rand', countries: ['South Africa'] }
    }.freeze
  end
end
