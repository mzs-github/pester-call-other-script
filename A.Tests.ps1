$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
. "$here\.\$sut"

Describe "Do-A" {
    $ret = Do-A
    It "returns B" {
        $ret | Should Be "B"
    }
}

