package panda.demo;

import java.io.File;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;

import panda.aems.ServletApplet;
import panda.demo.entity.SampleDate;
import panda.demo.entity.SampleFile;
import panda.demo.entity.SampleJoin;
import panda.demo.entity.SampleTags;
import panda.demo.entity.SampleUnique;

/**
 * Application
 */
public class Application extends ServletApplet {

	private static File lucenePath;
	private static Directory luceneDirectory;
	
	/**
	 * @return the luceneDirectory
	 */
	public static Directory getLuceneDirectory() {
		return luceneDirectory;
	}

	/**
	 * @return the luceneIndexWriter
	 */
	public static IndexWriter getLuceneIndexWriter() throws Exception {
		Analyzer analyzer = new StandardAnalyzer(Version.LUCENE_45);
		IndexWriterConfig iwc = new IndexWriterConfig(Version.LUCENE_45, analyzer);
		iwc.setOpenMode(OpenMode.CREATE_OR_APPEND);

		// Optional: for better indexing performance, if you
		// are indexing many documents, increase the RAM
		// buffer. But if you do this, increase the max heap
		// size to the JVM (eg add -Xmx512m or -Xmx1g):
		//
		// iwc.setRAMBufferSizeMB(256.0);

		IndexWriter writer = new IndexWriter(getLuceneDirectory(), iwc);
		return writer;
	}

	@Override
	protected void initialize() throws Exception {
		super.initialize();
		
		lucenePath = new File(Application.me().getPropertyAsPath("lucene.directory", "/WEB-INF/lucene"));
		luceneDirectory = FSDirectory.open(lucenePath);
		
		//initialize entities
		getDaoClient().getEntity(SampleDate.class);
		getDaoClient().getEntity(SampleFile.class);
		getDaoClient().getEntity(SampleJoin.class);
		getDaoClient().getEntity(SampleTags.class);
		getDaoClient().getEntity(SampleUnique.class);
	}
}
