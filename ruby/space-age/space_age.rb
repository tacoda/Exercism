class SpaceAge
  EARTH_ORBITAL_PERIOD = 31557600.0
  ORBITAL_PERIODS = {
    :earth => EARTH_ORBITAL_PERIOD,
    :mercury => EARTH_ORBITAL_PERIOD * 0.2408467,
    :venus => EARTH_ORBITAL_PERIOD * 0.61519726,
    :mars => EARTH_ORBITAL_PERIOD * 1.8808158,
    :jupiter => EARTH_ORBITAL_PERIOD * 11.862615,
    :saturn => EARTH_ORBITAL_PERIOD * 29.447498,
    :uranus => EARTH_ORBITAL_PERIOD * 84.016846,
    :neptune => EARTH_ORBITAL_PERIOD * 164.79132,
  }

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds / ORBITAL_PERIODS[:earth]
  end

  def on_mercury
    @seconds / ORBITAL_PERIODS[:mercury]
  end

  def on_venus
    @seconds / ORBITAL_PERIODS[:venus]
  end

  def on_mars
    @seconds / ORBITAL_PERIODS[:mars]
  end

  def on_jupiter
    @seconds / ORBITAL_PERIODS[:jupiter]
  end

  def on_saturn
    @seconds / ORBITAL_PERIODS[:saturn]
  end

  def on_uranus
    @seconds / ORBITAL_PERIODS[:uranus]
  end

  def on_neptune
    @seconds / ORBITAL_PERIODS[:neptune]
  end
end
