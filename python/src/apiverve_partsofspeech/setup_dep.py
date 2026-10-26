from setuptools import setup, find_packages

setup(
    name='apiverve_partsofspeech',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Parts Of Speech extracts words from text based on grammatical categories like nouns, verbs, and adjectives. Pass any text passage and a category to receive an array of matching words.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/partsofspeech?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
