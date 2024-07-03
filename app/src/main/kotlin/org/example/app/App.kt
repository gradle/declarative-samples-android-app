package org.example.app

import org.apache.commons.text.WordUtils

import org.example.list.LinkedList
import org.example.utilities.SplitUtils
import org.example.utilities.StringUtils

class App {
    fun main() {
        val tokens: LinkedList
        tokens = SplitUtils.split(MessageUtils.message())
        val result: String = StringUtils.join(tokens)
        java.lang.System.out.println(WordUtils.capitalize(result))
    }
}
