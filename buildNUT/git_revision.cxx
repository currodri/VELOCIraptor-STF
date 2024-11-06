//
// ICRAR - International Centre for Radio Astronomy Research
// (c) UWA - The University of Western Australia, 2018
// Copyright by UWA (in the framework of the ICRAR)
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.
//

/**
 * @file
 *
 * Stores the git revision information
 */
 #include <string>

namespace velociraptor
{

bool git_has_local_changes()
{
	return std::string("DIRTY") == "DIRTY";
}

std::string git_sha1()
{
	std::string s = "51a56978d8b2c787c75d47eb28c1e20a09f12bb0";
    if (velociraptor::git_has_local_changes())
    {
        s += "-DIRTY";
    }
    return s;
}


}
